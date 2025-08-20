num calculatePrice(num baseprice, String size) {
  switch (size) {
    case 'S':
      return baseprice;
    case 'M':
      return baseprice + 2;
    case 'L':
      return baseprice + 4;
    default:
      return baseprice;
  }
}
