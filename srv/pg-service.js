const cds = require('@sap/cds');

class PublicService extends cds.ApplicationService {
    init() {
        const { Projects } = this.entities;
        this.on('READ', 'Projects', async (req) => {
            return await SELECT.from(Projects).where({
                ID: '2d7c145e-fd40-492f-8499-2dd21e3cf0fc'
            });
        });
        this.on('test', async (req) => {
            return "test";
        })
        return super.init();
    }
};

module.exports = {
    PublicService
};