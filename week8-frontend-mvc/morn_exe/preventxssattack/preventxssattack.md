
## Prevent XSS Attacks

###Objective

Write code in Ruby to escape special HTML characters in a string to prevent against XSS attacks.


###HTML Escaping

Escaping user input before inserting it into HTML code is vital for preventing **cross-site scripting (XSS)** attacks. If user input containing HTML is not escaped before being placed in HTML code, the HTML will be rendered by the browser. This may allow an attacker to inject malicious JavaScript or to log user IPs. For the latter, an img tag could be injected which allows the attacker's server to log each image request.

HTML code can be escaped to prevent XSS attacks by replacing six characters with HTML **escape codes**. The six replacements are:

  '&' => '&amp;'
  '<' => '&lt;'
  '>' => '&gt;'
  '"' => '&quot;'
  "'" => '&#x27;'
  '/' => '&#x2F;'

###Input

A string of valid HTML code.

###Ouput

An string of valid HTML code with special characters escaped.

###Examples

  Input: 'is z > 0 && z < 10?'
  Output: 'is z &gt; 0 &amp;&amp; z &lt; 10?'

  Input: '<script>alert("error")</script>'
  Output: "&lt;script&gt;alert(&quote;error&quote;)&lt;&#x2F;script&gt;"

  Input: '&lt;&lt; Accept & Checkout'
  Output: "&lt;&lt; Accept &amp; Checkout"