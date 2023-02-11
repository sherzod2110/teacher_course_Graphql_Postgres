import PG from '../../utils/postgres.js'

class CourseModel extends PG {
    findAll() {
        return this.fetchData(`
            select * from courses
        `)
    }
}

export default new CourseModel();