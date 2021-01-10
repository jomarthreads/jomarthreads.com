---
layout: default
permalink: /
images:
  - name: IMG_0127
    alt: Blue and purple scarf on a mannequin
  - name: IMG_0140
    alt: Teal scarf on a mannequin
  - name: IMG_0179
    alt: Red scarf laying flat
  - name: IMG_0180
    alt: Red scarf tied in a knot
  - name: IMG_6162A
    alt: Model wearing a black scarf
  - name: IMG_6353A
    alt: Red scarf on a mannequin
  - name: IMG_6482
    alt: Blue and purple scarf on a mannequin
  - name: IMG_6489
    alt: Light blue scarf on a mannequin
---

# JoMar Threads

Welcome to JoMar Threads — a collection of luxurious knitwear that I've knitted and beaded by hand. I've spent most of my life in and around Los Angeles, and the city has inspired me with everything from Busby Berkeley musicals to Frank Lloyd Wright's Hollyhock House. This is where I first needlepointed — a fantastic way to explore color, yarns and embellishments including beads — and then transitioned back into knitting as wearable art.

Early exposure of pattern and craftsmanship also led to my passion for the materials I used in the collection — fine merino wools, mohair, rayon, silk, and other yarns that have dyed in small lots or hand-painted to ensure originality.

Email: jomarthreads@gmail.com

<div markdown="0">
{% for image in page.images %}
{% assign loopindex = forloop.index | minus: 1 | modulo: 2 %}
{% if loopindex == 0 %}
<div class="row">
{% endif %}

<img class="product-image"
   alt="{{ image.alt | xml_escape }}"
   src="{{ site.baseurl }}/assets/images/{{ image.name }}@1x.jpg"
   srcset="{{ site.baseurl }}/assets/images/{{ image.name }}@1x.jpg 1x,
           {{ site.baseurl }}/assets/images/{{ image.name }}@2x.jpg 2x,
           {{ site.baseurl }}/assets/images/{{ image.name }}@3x.jpg 3x" />

{% if loopindex == 1 or forloop.index == page.images.length %}
</div>
{% endif %}
{% endfor %}
</div>
