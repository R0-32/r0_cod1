const hello=name=> {
  return  name ? "Hello, " + name.substring(0,1).toUpperCase() + name.substring(1).toLowerCase() + '!' : "Hello, World!"; 
}