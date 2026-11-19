<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD5DTMumpsElements.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD5DTMumpsElements.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD5DTMumpsElements.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD5DTMumpsElements.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD5DTMumpsElements.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD5DTMumpsElements.html');
else 
  Redirect('https://smart.who.int/immunizations/v1.0.0/Library-IMMZD5DTMumpsElements.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
