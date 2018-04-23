export default class ProjectService {

    constructor(resource) {
        this._resource = resource;
    }

    listJobs() {
        return this._resource('projects/main.json')
            .query()
            .then(res => res.json(), err => {
                console.log(err);
                throw new Error('Problems while jobs are loading');
            });
    }

}
