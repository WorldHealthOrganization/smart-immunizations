<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/QuestionnaireResponse-Example.IMMZ.D1.QuestionnaireResponse.Polio.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/QuestionnaireResponse-Example.IMMZ.D1.QuestionnaireResponse.Polio.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/QuestionnaireResponse-Example.IMMZ.D1.QuestionnaireResponse.Polio.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/QuestionnaireResponse-Example.IMMZ.D1.QuestionnaireResponse.Polio.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/QuestionnaireResponse-Example.IMMZ.D1.QuestionnaireResponse.Polio.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://smart.who.int/immunizations/v1.0.0/QuestionnaireResponse-Example.IMMZ.D1.QuestionnaireResponse.Polio.html');
else 
  Redirect('https://smart.who.int/immunizations/v1.0.0/QuestionnaireResponse-Example.IMMZ.D1.QuestionnaireResponse.Polio.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
