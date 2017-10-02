function hashtagGenerator(str) {
  var individualWords = str.split(" ");
  var hashtagHolder = new Array
  hashtagHolder[0] = "#";

  for (i=0; i < individualWords.length; i++) {
    capitalizedWord = individualWords[i].charAt(0).toUpperCase() + individualWords[i].slice(1);
    hashtagHolder.push(capitalizedWord)
  }

  var finalHashtag = hashtagHolder.join("")

  if (finalHashtag.length < 140) {
    return finalHashtag 
  } else {
    return "String is too long to be tweeted!"
  }

}
var str = "Hello there thanks for trying my Kata";
console.log(hashtagGenerator(str));
console.log(hashtagGenerator("Hello World"));
console.log(hashtagGenerator("I am going to create an exceptionally long hashtag for the sake of proving that the hashtag generator will throw an error and identify that this is way way way too long to ever be tweeted out by anyone."));
