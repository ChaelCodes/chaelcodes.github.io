---
title: Projects
permalink: "/projects"
layout: page
---
I have too many projects to keep track of. Here they are:

<ul class="projects">
  {% for project in site.data.projects %}
  <li>
    <a href="{{project.url}}"><strong>{{project.name}}</strong></a>
    <p>{{project.description}}</p>
  </li>
  {% endfor %}
</ul>

<style>
.projects li {
  list-style: none;
}

</style>
