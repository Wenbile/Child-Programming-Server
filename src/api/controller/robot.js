const Base = require('./base.js');
module.exports = class extends Base {
    async getAllBlocksAction() {
        const type_model = this.model('project_type')
        const types = await type_model.select();
        var blockArr = []

        for (const type of types) {
            const model = this.model('blocks');
            const blocks = await model.where({type:type.id}).select();
            for (const block of blocks) {
                block.href = "/Game/caseEdit?edit=1&project_id=" + block.id
            }
            var blockDic = {
                id:type.id,
                type_name:type.type_name,
                children:blocks
            }
            blockArr.push(blockDic)
        }

        return this.success(blockArr);
    }

    async saveBlockAction() {
        const id = this.post('id')
        const name = this.post('name')
        const blocks = this.post('blocks')
        console.log("id",id,name,blocks)
        const model = this.model('blocks');
        const re = model.where({id:id}).update({name:name,blocks:blocks})
        console.log(re)
        if(re){
            return this.success("修改成功");
        }else {
            return this.fail("修改失败");
        }
    }

    async addBlockAction() {
        const type = this.post('type')
        const name = this.post('name')
        const blocks = this.post('blocks')
        const model = this.model('blocks');
        var max_id = await model.max('id') + 1

        const re = model.add({id:max_id,name:name,blocks:blocks,type:type,img:"art.jpg"})
        if(re){
            return this.success({id:max_id});
        }else {
            return this.fail("新增失败");
        }
    }

    async deleteBlockAction() {
        const id = this.post('id')

        const model = this.model('blocks');


        const re = await model.where({id:id}).delete()
        if(re){
            return this.success("删除成功");
        }else {
            return this.fail("删除失败");
        }
    }



    async getProjectTypesAction(){
        var types = await this.model('project_type').select()
        return this.success(types);
    }

    async editProjectTypeAction(){
        const id = this.post('id')
        const type_name = this.post('type_name')
        var types = await this.model('project_type').where({id:id}).update({
            type_name:type_name
        })
        return this.success("修改成功");
    }


    async addProjectTypeAction(){
        const type_name = this.post('type_name')
        var model = this.model('project_type')
        var types = await model.add({
            type_name:type_name
        })
        var data = await model.where({type_name:type_name}).find()
        return this.success(data);
    }

    async deleteProjectTypeAction(){
        const id = this.post('id')
        var types = await this.model('project_type').where({id:id}).delete()
        return this.success("删除成功");
    }

    async addNewProjectTypeAction() {
        const name = this.post('name')

        const model = this.model('project_type');
        const addStatu = await model.add({
            type_name:name
        });
        return this.success(addStatu);
    }

    async getQuickStartBlocksAction() {
        const model = this.model('blocks');
        const blocks = await model.where({type:0}).select();
        return this.success(blocks);
    }

    async getStudyCaseBlocksAction() {
        const model = this.model('blocks');
        const blocks = await model.where({type:1}).select();
        return this.success(blocks);
    }



};