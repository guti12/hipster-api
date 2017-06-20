document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {hipsters: [],
    newHipsterWord: '',
    newHipsterSentence: '',
    newHipsterParagraph: ''
    },

    mounted: function() {
    	$.get('/api/v1/hipster.json', function(hipsterData) {
        this.hipsters = hipsterData;
      }.bind(this));
    },

    methods: {
    	addHipster: function() {
    		var newHipster = {
    											word: this.newHipsterWord,
    											sentence: this.newHipsterSentence,
    											paragraph: this.newHipsterParagraph
    										}
    		$.post('/api/v1/people.json', params, function(newPerson) {
	    		this.hipster.push(newHipster);
	    		this.newHipsterWord = '';
	    		this.newHipsterSentence = '';
	    		this.newHipsterParagraph = '';
		    	}.bind(this)
		    );
    	}
    }
  });
});