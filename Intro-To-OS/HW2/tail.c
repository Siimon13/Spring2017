#include "types.h"
#include "stat.h"
#include "user.h"


void tail(int fd, int start){

  char buf[1];
  int n,i, l;

  l=0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    if(l >= start)
      write(1,buf,n);

    for(i=0; i<n; ++i){
      if(buf[i] == '\n'){
        ++l;
      
      }
    }
  }

}

int counttail(int fd, int lines){
  
  char buf[1];
  int i, n,l;

  /* if (!fd){ */

  /*   while((n = read(fd, buf, sizeof(buf))) > 0){ */
  /*     for(i=0; i<n; ++i){ */
  /*       if(buf[i] == '\n'){ */
  /*         ++l; */
  /*       } */
  /*     } */
  /*     write(1,buf,n); */
  /*     if (lines > l) */
  /*       break; */
  /*   } */

  /* } */

  /* else { */

  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i=0; i<n; ++i){
      if(buf[i] == '\n'){
        ++l;
      }
    } 
    if (!fd){
      write(1,buf,n);
      if(lines > 1)
        break;
    }
  }

/* } */

  return l-lines;
}

int main(int argc, char *argv[])
{
  int i, fd, lines, start, ignore;

  lines = -1;
  ignore = -1;

  for (i = 1; i < argc; ++i){
    if (argv[i][0] == '-'){
      char* newint = &argv[i][0];
      lines = atoi(++newint);
      ignore = i;
    }
  }

  if (lines < 0)
    lines = 10;

  if (argc <= 1){
    start = counttail(0, lines);
    tail(0, start);
    exit();
  }

  for (i = 1; i < argc; ++i){
    if (i != ignore){
   
      if((fd = open(argv[i], 0)) < 0){
        printf(1, "tail: cannot open %s\n", argv[i]);
        exit();
      }
      start = counttail(fd, lines);
      close(fd);

      fd = open(argv[i], 0);
      tail(fd,start);
      close(fd);

    }
  }
  exit();


}
