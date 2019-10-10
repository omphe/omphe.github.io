--- 
title: ANT vs Fabric - Evolving tools for website deployment
created: 1258151625
author: omphe
categories:
- Build Scripting
- Continuous Integration
- ANT
- Fabric
- Python
- Java
- Symfony
- Drupal
- Joomla
---
In my development work for [Clockwork Robot](http://www.clockworkrobot.co.uk "Clockwork Robot - Web Consultancy" ), I have always used the [ANT build tool](http://ant.apache.org/) for packaging and deploying client sites. I chose ANT for its platform independence and its XML syntax, which cleanly decoupled build and deployment from the language that the websites were built in, usually PHP.

While ANT was developed for Java development, it works equally well for the deployment of applications written in any language. I reasoned that the limitations of ANT scripts would provide useful constraints for any developer/release manager trying to bend the build and deployment process to do inappropriate things.

Furthermore, at the time that I adopted ANT, it was far superior to the current alternatives, which were usually cryptic and brittle <a title="GNU Make" href="http://www.gnu.org/software/make/">GNU Make</a> files or, worse yet, Perl scripts that guaranteed employment for an incorrigible and obstreperous sysadmin. Plus, XML promised to be a _lingua franca_, a sort of utopian language that would solve all our problems and serve umbrella cocktails poolside.

## New Tools
Well, <a title="Esperanto - Wikipedia entry" href="http://en.wikipedia.org/wiki/Esperanto">Esperanto</a> was supposed to be a problem solving universal language, but it is only dear to tenacious eccentrics who find its constraints useful, and harbour delusions of semantic elegance. Which, as it has recently and painfully been pointed out to me, is how I have been behaving about ANT.

The problem is that while ANT is independent of the language _du jour_ of your current web app, that usually means that the skillset to develop and maintain the build and deployment scripts, is also independent of the experience or ambition of your developers.

Increasingly, Clockwork Robot clients are using PHP applications written in popular frameworks like [Symfony](http://www.symfony-project.org/ "Symfony"), or CMS like <a title="Drupal CMS" href="http://drupal.org/">Drupal</a> or <a title="Joomla CMS" href="http://www.joomla.org/">Joomla</a>. These frameworks may provide their own deployment tools, otherwise PHP projects like <a title="Phing" href="http://phing.info/trac/">Phing</a> provide ANT-like alternatives.

Meanwhile, for server administration and heavy lifting on the command line, Python has become the language of choice. Since it reads like executable pseudo-code, PHP developers are generally comfortable with picking up Python skills, and since Google and NASA use Python, it must be cool.

## Move over ANT
Enter <a title="Fabric documentation" href="http://docs.fabfile.org/0.9.0/">Fabric</a>, a build and deployment tool written in Python. While the syntax is just bog-standard Python, it carries a lightweight API that gives just enough useful functionality without getting in the way. The syntax is less verbose than ANT, given there's no need to open and close tags, and execution of the commands on the command line are just as easy in Fabric.

Since Python has become a commodity skill for developers and sysadmins alike, I'm now considering a move from ANT to Fabric. It makes more sense for project resourcing, that the scripts can be built and maintained by whomever is closest to the deployment coalface at the time; developers or sysadmins.

In upcoming posts, I'll be demonstrating the installation and use of Fabric, and running a closer comparison of the two tools.

<table>
<thead>
<tr>
<th></th>
<th>ANT</th>
<th>Fabric</th>
</tr>
</thead>
<tbody>
<tr>
<th>Advantages</th>
<td>
<ul>
<li><a title="Ant Manual" href="http://ant.apache.org/manual/index.html">Excellent documentation</a>

<li>Wide availability of extension tasks and libraries

<li>Widespread integration with popular continuous integration and deployment tools such as Hudson

</ul>
</td>
<td>
<ul>
<li>Simple Python syntax

<li>Superior SSH integration built in

</ul>
</td>
</tr>
<tr>
<th>Disadvantages</th>
<td>
<ul>
<li>Complicated or custom tasks require Java coding

<li>Verbose syntax

<li>Java implementation makes it inaccessible and unwieldy for systems administrators

</ul>
</td>
<td>
<ul>
<li>Relatively new project

<li>Scant documentation

</ul>
</td>
</tr>
</tbody>
</table>
