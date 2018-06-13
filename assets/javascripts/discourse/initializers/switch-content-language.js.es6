//import PreferencesTabController from 'discourse/controllers/preferences';
import PreferencesTabController from "discourse/mixins/preferences-tab-controller";
import computed from "ember-addons/ember-computed-decorators";



export default {
  name: 'extend-for-signatures',
  initialize(container) {

    alert("test");

    Ember.Controller.extend(PreferencesTabController, {
        @computed("contentLanguageOptions")
        contentLanguageOptions(){

          alert("test2");

          return [
            {name: 'test', value: 0},
            {name: 'test', value: 1},
            {name: 'test', value: 2}
          ];
        },
        @computed("languageSelection")
        languageSelection() {
          return 2;
        },
        actions: {
          save() {
            alert("blub");
          }
        }
    });
  }
};












/*export default {
  name: 'basic-links',
  initialize(){

    PreferencesTabController.reopen({
      contentLanguageOptions: [
        {name: 'test', value: 0},
        {name: 'test', value: 1},
        {name: 'test', value: 2}
      ]
    });

  }
}*/



/*export default {
  name: 'extend-user-preferences-for-language-switch',
  before: 'inject-discourse-objects',
  initialize(container) {

    PreferencesTabController.reopen({
      contentLanguageOptions: [
        {name: 'test', value: 0},
        {name: 'test', value: 1},
        {name: 'test', value: 2}
      ]
    });
  }
};*/


/*export default Ember.Controller.extend(PreferencesTabController, {
  contentLanguageOptions: [
    {name: 'test', value: 0},
    {name: 'test', value: 1},
    {name: 'test', value: 2}
  ],
  actions: {
  }
});*/


/*export default {

  contentLanguageOptions: [
    {name: 'test', value: 0},
    {name: 'test', value: 1},
    {name: 'test', value: 2}
  ]

};*/
