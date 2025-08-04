export default function devideFunction(numerator, denominator) {
  if (denominator === 0) {
    throw new Error('Cannot divide by 0');
  } else {
    return numerator / denominator;
  }
}
