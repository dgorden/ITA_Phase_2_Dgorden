### Feedback
- Overall, super well structured project. I especially like the use of SCSS in here to speed up your development time and make it easier on yourself. Hopefully you found that implementation as time well spent. Most of the feedback I'm providing below are suggestions to make your code more resilient / more maintainable in event of changes. Consider it defensive coding :)
- There's also a couple of stretch goals in here. Feel free to take them on if you want an additional challenge or omit them if you find yourself short on time. We can always walk through doing them together too if you get hung up on something but are curious about its implementation. 

#### Tooling
- Really smart to pull in `node-sass` and run it as a build script. Using SCSS is a great way to organize your styles into more manageable bites. It made it really easy to follow/review your styles.
- **Stretch Goal**: Figure out how to minify your SCSS when you compile your SCSS to CSS 
- **Stretch Goal**: Figure out how to auto-prefix (use vendor prefixes) when you compile your SCSS to CSS
    - Hint: you should be able to accomplish both minification / prefixing in the same build step
- **Stretch Goal**: Because you have this build step in here with your `package.json` file, consider adding a `README` with instructions for how to run it within the `Week_03` directory. It'll make for good practice writing documentation.
- **Stretch Goal**: Rather than have a separate `normalize.css` file that you include, see if you can implement this via an NPM package.

#### General
- Good job on the project structure - overall your directories are very well defined and organized. For the most part, the base directories would be how I would expect a production-level application to be structured. 

#### Images
- File structure very well defined
- I might suggest (just to make it easier on yourself), to simplify the folder structure a little bit:
    - Perhaps an `icons`, `nav`, `iphone` directories?
    - I would suggest your image directories be valid URL structures (without spaces). This will make it easier to reference and avoid potential URL errors. Ex: `iphone-x` vs. `iPhone X`
    
#### HTML / Markup
- Again, very well structured, clearly defined markup.
- Good use of semantic tags / markup.
- I don't have anything major to suggest in terms of markup. One potential opportunity is to add some comments where it makes sense
- **Stretch Goal**: See if there are any SEO optimizations that could be made. 

#### SCSS / Styles
- Really smart to implement utility-style classes and make use of SCSS's variables.
- Again, well-organized. SCSS partials are broken up in a logical, concise way.
- We talked about this a bit in our code-review, but putting here for visibility. Try to aim for more fluid, percentage-based widths vs. hard pixel values. Hard pixel values can mess you up as you're writing CSS for multiple screen widths:
```css
/* use */
.selector {
    width: 100%;
    max-width: 375px;
}

/* instead of */
.selector {
    width: 375px;
}
```
- In the same vein, I would suggest avoiding hard-coded pixel heights in favor of using padding to give the desired height of your HTML element.
    - Rationale: if that HTML element ever changes slightly (say, by adding more text or another image), the specific height will cause some visual issues. Here is an example: [https://jsbin.com/jugafavewu/edit?html,css,output](https://jsbin.com/jugafavewu/edit?html,css,output)
- Fonts: I'd recommend adding a fallback when you declare an font-family: `font-family: 'Proxima-Nova', 'Arial', sans-serif;`. This will help protect you in case a font fails to load.
    - Could also be a good opportunity to declare fonts as variables to reduce the amount of times you have to write this.  
- I would suggest importing your SCSS partials in `styles.scss` in order of generic to more specific. The look most of the way there, with the exception of `_font.scss`
    - This will allow you to take better advantage of the cascade in CSS. 
- You seem to have utility-style CSS classes / naming down. Have a look at some other approaches to CSS naming conventions (not an endorsement - just good to be aware):
    - [https://css-tricks.com/methods-organize-css/](https://css-tricks.com/methods-organize-css/)
    - [https://medium.com/@Intelygenz/how-to-organize-your-css-with-oocss-bem-smacss-a2317fa083a7](https://medium.com/@Intelygenz/how-to-organize-your-css-with-oocss-bem-smacss-a2317fa083a7)

#### Git / Workflow
- Suggestion: let's try and get into the habit of smaller commits and more description commit messages. I know this first week was a bit of a wash, but that will make it easier to review your code by stepping through individual commits. It will also make it easier to revert a commit if you need to undo some changes.
    - Don't be afraid to commit too much. Generally speaking, I'll try to keep my commit messages focused on a specific task or feature.
        - For example, one commit step might be adding your color variables SCSS file. Another might be writing the markup for a header on an HTML file. 
    - Try and follow a commit message pattern. Here are a couple of good resources:
        - [https://chris.beams.io/posts/git-commit/](https://chris.beams.io/posts/git-commit/)
        - [https://www.conventionalcommits.org/en/v1.0.0-beta.2/](https://www.conventionalcommits.org/en/v1.0.0-beta.2/)
        - Personally, I don't have a preference in approach, so long as it's consistent
- We talked about this in our review as well, but let's try to use feature branches and Pull Requests so we can simulate our workflow on our various teams.
 - Generally speaking, it is considered bad practice to commit your `node_modules` directory. One common fix to omit this directory would be to implement a `.gitignore` file.  
  
