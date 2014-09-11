


FRUIT_BEARING_AGE = 5
MAX_AGE = 100
ORANGES_PER_SEASON = 5

function Orange () {
  this.diameter = 3;
}

Orange.prototype.pickOrange = function () { return this; }

function Tree () {
  this.age = 0;
  this.height = 0;
  this.oranges = [];
  isAlive = true;
}

Tree.prototype = {

  dropOrange: function () {
    return this.oranges.pop(); },

  orangeCount: function () {
    return this.oranges.length;
  },

  grow: function () {
    this.age ++;
    this.height += 10;

    if (this.age >= FRUIT_BEARING_AGE) {
      this.oranges = [];
      var i = 0;
      while (i < ORANGES_PER_SEASON) {
        var orange = new Orange();
        this.oranges.push(orange);
        i++;
      }
      // console.log(this);
    }

    if (this.age <= MAX_AGE) { this.isAlive = true; }
    else { this.isAlive = false; }
  }
}
