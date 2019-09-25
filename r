warning: LF will be replaced by CRLF in src/app/app-routing.module.ts.
The file will have its original line endings in your working directory
[1mdiff --git a/src/app/app-routing.module.ts b/src/app/app-routing.module.ts[m
[1mindex 1a91492..f1000d8 100644[m
[1m--- a/src/app/app-routing.module.ts[m
[1m+++ b/src/app/app-routing.module.ts[m
[36m@@ -1,12 +1,11 @@[m
 import { NgModule } from '@angular/core';[m
[31m-import { CommonModule } from '@angular/common';[m
[31m-[m
[32m+[m[32mimport { RouterModule, Routes } from '@angular/router';[m
 [m
[32m+[m[32mimport { HeroesComponent } from './heroes/heroes.component';[m
 [m
[32m+[m[32mconst routes: Routes = [{ path: 'heroes', component: HeroesComponent }];[m
 @NgModule({[m
[31m-  declarations: [],[m
[31m-  imports: [[m
[31m-    CommonModule[m
[31m-  ][m
[32m+[m[32m  imports: [RouterModule.forRoot(routes)],[m
[32m+[m[32m  exports: [RouterModule][m
 })[m
[31m-export class AppRoutingModule { }[m
[32m+[m[32mexport class AppRoutingModule {}[m
[1mdiff --git a/src/app/app.component.css b/src/app/app.component.css[m
[1mindex e69de29..e1c7cd6 100644[m
[1m--- a/src/app/app.component.css[m
[1m+++ b/src/app/app.component.css[m
[36m@@ -0,0 +1,29 @@[m
[32m+[m[32m/* AppComponent's private CSS styles */[m
[32m+[m[32mh1 {[m
[32m+[m[32m  font-size: 1.2em;[m
[32m+[m[32m  margin-bottom: 0;[m
[32m+[m[32m}[m
[32m+[m[32mh2 {[m
[32m+[m[32m  font-size: 2em;[m
[32m+[m[32m  margin-top: 0;[m
[32m+[m[32m  padding-top: 0;[m
[32m+[m[32m}[m
[32m+[m[32mnav a {[m
[32m+[m[32m  padding: 5px 10px;[m
[32m+[m[32m  text-decoration: none;[m
[32m+[m[32m  margin-top: 10px;[m
[32m+[m[32m  display: inline-block;[m
[32m+[m[32m  background-color: #eee;[m
[32m+[m[32m  border-radius: 4px;[m
[32m+[m[32m}[m
[32m+[m[32mnav a:visited,[m
[32m+[m[32ma:link {[m
[32m+[m[32m  color: #334953;[m
[32m+[m[32m}[m
[32m+[m[32mnav a:hover {[m
[32m+[m[32m  color: #039be5;[m
[32m+[m[32m  background-color: #cfd8dc;[m
[32m+[m[32m}[m
[32m+[m[32mnav a.active {[m
[32m+[m[32m  color: #039be5;[m
[32m+[m[32m}[m
[1mdiff --git a/src/app/app.component.html b/src/app/app.component.html[m
[1mindex fe85d09..7d66424 100644[m
[1m--- a/src/app/app.component.html[m
[1m+++ b/src/app/app.component.html[m
[36m@@ -1,3 +1,6 @@[m
[31m-<h2>{{ title }}</h2>[m
[31m-<app-heroes></app-heroes>[m
[32m+[m[32m<h1>{{ title }}</h1>[m
[32m+[m[32m<nav>[m
[32m+[m[32m  <a routerLink="/heroes">Heroes</a>[m
[32m+[m[32m</nav>[m
[32m+[m[32m<router-outlet></router-outlet>[m
 <app-message></app-message>[m
[1mdiff --git a/src/app/hero-detail/hero-detail.component.css b/src/app/hero-detail/hero-detail.component.css[m
[1mindex e69de29..de1044b 100644[m
[1m--- a/src/app/hero-detail/hero-detail.component.css[m
[1m+++ b/src/app/hero-detail/hero-detail.component.css[m
[36m@@ -0,0 +1,31 @@[m
[32m+[m[32m/* HeroDetailComponent's private CSS styles */[m
[32m+[m[32mlabel {[m
[32m+[m[32m  display: inline-block;[m
[32m+[m[32m  width: 3em;[m
[32m+[m[32m  margin: 0.5em 0;[m
[32m+[m[32m  color: #607d8b;[m
[32m+[m[32m  font-weight: bold;[m
[32m+[m[32m}[m
[32m+[m[32minput {[m
[32m+[m[32m  height: 2em;[m
[32m+[m[32m  font-size: 1em;[m
[32m+[m[32m  padding-left: 0.4em;[m
[32m+[m[32m}[m
[32m+[m[32mbutton {[m
[32m+[m[32m  margin-top: 20px;[m
[32m+[m[32m  font-family: Arial;[m
[32m+[m[32m  background-color: #eee;[m
[32m+[m[32m  border: none;[m
[32m+[m[32m  padding: 5px 10px;[m
[32m+[m[32m  border-radius: 4px;[m
[32m+[m[32m  cursor: pointer;[m
[32m+[m[32m  cursor: hand;[m
[32m+[m[32m}[m
[32m+[m[32mbutton:hover {[m
[32m+[m[32m  background-color: #cfd8dc;[m
[32m+[m[32m}[m
[32m+[m[32mbutton:disabled {[m
[32m+[m[32m  background-color: #eee;[m
[32m+[m[32m  color: #ccc;[m
[32m+[m[32m  cursor: auto;[m
[32m+[m[32m}[m
