# anticlickjack
Actively combats an attempt to load your SilverStripe site through an iframe. This works as a fallback when used with `Security::frame_options = 'DENY'` and any X-Frame-Options headers sent by your webserver. 

This is not an original idea - the attack and the sample code used to prevent it [have been available on the internet since 2008](https://www.owasp.org/index.php/OWASP_NYC_AppSec_2008_Conference). Clickjacking occurs when an attacker loads your website through an iframe and overlays that frame on an attack page. The opacity of the iframe can be set to 0 and positioned over an element on their page (such as a button) to trick the user into clicking it - the click is actually passed through to your site through the iframe.

A common mitigation is to set your server headers to deny loading from iframes completely, or only allow them if it originates from the same domain. This shim acts as a fallback if those headers are not in place, or your browser is too old or restricted to understand them - if a clickjack is detected, the hostpage will redirect to the URL defined on its `src` attribute.

## installation

`composer require elliotsawyer/anticlickjack`

## usage
Add this at the very end of your <head> tags.
```html
<head>
  ...
  <% include AntiClickjack %>
</head>
```

## license

Copyright 2019 Elliot Sawyer. Released under BSD-3

## contributing

Contributions are more than welcome! Please raise some issues or create pull requests on the Github repo.

## support
--------
Need some extra help or just love my work? Consider shouting me a coffee or a small donation if this module helped you solve a problem. I accept cryptocurrency at the following addresses:
* Bitcoin: 12gSxkqVNr9QMLQMMJdWemBaRRNPghmS3p
* Bitcoin Cash: 1QETPtssFRM981TGjVg74uUX8kShcA44ni
* Litecoin: LbyhaTESx3uQvwwd9So4sGSpi4tTJLKBdz
* Ethereum: 0x0694E0704c70D8d178dd2e9522FC59EBBEe86748
