/*The console should log for each pokemon:

```
Squirtle || HP: 44 || Attack: 48 || Defense: 65 || Speed: 43*/

var array3 = 
[
  ["Squirtle",
    ["HP",
      [44,
        ["Attack",
          [48,
            ["Defense",
              [65,
                ["Speed",
                  [43]
                ]
              ]
            ]
          ]
        ]
      ]
    ]
  ],
  ["Snorlax",["HP",[160,["Attack",[110,["Defense",[65,["Speed",[30]]]]]]]]],
  ["Mew",["HP",[100,["Attack",[100,["Defense",[100,["Speed",[100]]]]]]]]]
]

var array = _.each(array3, print);





function print (array) {
  var newArray = _.flatten(array);
  var message = newArray.shift() + " || ";
  //console.log(newArray);

  message += newArray[0] + ": " +newArray[1] + " || ";
  message += newArray[2] + ": " +newArray[3] + " || ";
  message += newArray[4] + ": " +newArray[5] + " || ";
  message += newArray[6] + ": " +newArray[7] ;
  console.log(message);
  //console.log(newArray);
}








