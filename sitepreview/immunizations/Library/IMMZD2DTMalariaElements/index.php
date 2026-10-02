<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD2DTMalariaElements.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD2DTMalariaElements.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD2DTMalariaElements.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD2DTMalariaElements.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD2DTMalariaElements.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD2DTMalariaElements.html');
else 
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD2DTMalariaElements.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
