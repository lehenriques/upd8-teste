@extends('layouts.app')

@section('content')
<div class="col-span-12 mx-2 my-4 border-2 border-black rounded-2xl p-2 mb-4">
    <h2 class="mb-4 text-blue-800 font-bold">Consulta Clientes</h2>
    <div class="grid grid-cols-4 mb-4">
        <div>
            <label for="cpf" class="font-bold">CPF: </label>
            <input type="text" name="cpf" id="cpf" class="border-2 border-black rounded-lg ml-3">
        </div>
        <div>
            <label for="name" class="font-bold">Nome: </label>
            <input type="text" name="name" id="name" class="border-2 border-black rounded-lg ml-3">
        </div>
        <div class="text-center">
            <label for="birthdate" class="font-bold">Data Nascimento: </label>
            <input type="date" name="birthdate" id="birthdate" class="border-2 border-black rounded-lg ml-3">
        </div>
        <div class="text-right">
            <label for="gender" class="font-bold">Sexo: </label>
            <input type="radio" name="gender" id="gender" value="m"> Masculino
            <input type="radio" name="gender" id="gender" value="f"> Feminino
        </div>
    </div>
    <div class="grid grid-cols-4 mb-2">
        <div>
            <label for="state_id" class="font-bold">Estados:</label>
            <select name="state_id" id="state_id" class="border-2 border-black rounded-lg ml-3">
                <option value="" selected>Selecione uma Estado
                </option>
                @foreach ($states as $state)
                <option value="{{ $state->id }}">{{ $state->name }}</option>
                @endforeach
            </select>
        </div>
        <div class="aling-right col-span-2 pl-4">
            <label for="city_id" class="font-bold">Cidades</label>
            <select name="city_id" id="city_id" class="border-2 border-black rounded-lg ml-3">
                <option value="" selected>Selecione uma
                    cidade
                </option>
                @foreach ($cities as $city)
                <option value="{{ $city->id }}">{{ $city->name }}</option>
                @endforeach
            </select>
        </div>
        <div class="text-right">
            <input type="button" id="search" value="Pesquisar" onclick="search()" class="py-2 px-4 bg-blue-600 text-white rounded hover:bg-blue-800">
            <input type="button" id="clear" value="Limpar" onclick="clearSearch()" class="py-2 px-4 bg-gray-200 rounded hover:bg-gray-400 hover:text-white">
        </div>
    </div>

</div>

<div class="col-span-12 mx-2 my-4 border-2 border-black rounded-2xl p-2 ">
    <h2 class="mb-4 text-blue-800 font-bold">Resultado da Pe squisa</h2>
    <div class="mb-4">
        <table class="table-auto border border-black w-full">
            <thead>
                <tr class="bg-gray-200 border">
                    <th class="border"></th>
                    <th class="border"></th>
                    <th class="border">Cliente</th>
                    <th class="border">CPF</th>
                    <th class="border">Data Nasc.</th>
                    <th class="border">Estdo</th>
                    <th class="border">Cidade</th>
                    <th class="border">Sexo</th>

                </tr>
            </thead>
            <tbody id="tableDdata">
                <tr class="border">
                    <td class="border">&nbsp;</td>
                    <td class="border">&nbsp;</td>
                    <td class="border">&nbsp;</td>
                    <td class="border">&nbsp;</td>
                    <td class="border">&nbsp;</td>
                    <td class="border">&nbsp;</td>
                    <td class="border">&nbsp;</td>
                    <td class="border">&nbsp;</td>
                </tr>

            </tbody>
        </table>
    </div>
    <div>
        <div class="text-center">
            <nav id="tableLink" class="isolate inline-flex -space-x-px rounded-md shadow-xs" aria-label="Pagination">

            </nav>
        </div>
    </div>

</div>
@stop

@section('js')
<script>
    window.onload = function() {
        axios.get('api/customers')
            .then(res => {
                setForm(res.data.data)
                setPagination(res.data.links)
            })
            .catch(err => console.log('teste' + err));
    }

    function search() {
        let gender = document.querySelector('input[name="gender"]:checked');
        let genderValue = null;

        if (gender && typeof gender === 'object' && !Array.isArray(gender))
            genderValue = gender.value

        let data = {
            cpf: document.getElementById('cpf').value,
            name: document.getElementById('name').value,
            birthdate: document.getElementById('birthdate').value,
            gender: genderValue,
            state_id: document.getElementById('state_id').value,
            city_id: document.getElementById('city_id').value,
        }
        axios.get('api/customers', {
                params: data
            })
            .then(res => {
                setForm(res.data.data)
                setPagination(res.data.links)
            })
            .catch(err => console.log('teste' + err));
    }

    function clearSearch() {
        location.reload();  
    }

    function editElement(data) {
        alert(data)
    }

    function deleteElement(element) {
        axios.delete(`api/customer/${element}/delete`)
            .then(res => {
                console.log(res)
                if(res.status === 204)
                    search()
            })
            .catch(err => console.log('teste' + err));
    }

    function setForm(values) {
        let table = '';
        values.forEach(element => {
            table += '<tr class="border">' +
                '<td class="border"><a href="editar/' + element.id + '" class="py-2 px-4 bg-green-700 rounded hover:bg-green-900 text-white">Editar</a></td>' +
                '<td class="border"><input type="button" id="clear" onclick="deleteElement(' + element.id + ')" value="Limpar" class="py-2 px-4 bg-red-600 rounded hover:bg-red-700 text-white"></td>' +
                '<td class="border">' + element.name + '</td>' +
                '<td class="border">' + element.cpf + '</td>' +
                '<td class="border">' + element.name + '</td>' +
                '<td class="border">' + element.state.uf + '</td>' +
                '<td class="border">' + element.city.name + '</td>' +
                '<td class="border">' + element.gender + '</td>' +
                '</tr>'
        });
        document.getElementById('tableDdata').innerHTML = table
    }

    function setPagination(paginate) {
        let pag = '';
        let css = ''

        paginate.forEach(element => {
            let css = (element.active) ? ' bg-blue-600 text-white' : ' bg-white text-blue-600 '
            css += (element.url === null) ? ' bg-gray-300 text-gray-300 border-gray-300 cursor-not-allowed' : ' cursor-pointer'
            let click = (element.url === null) ? '' : `onclick="getPagination('${element.url}')"`

            pag += '<input type="button" value="' + element.label + '" ' + click + ' class="relative z-10 inline-flex items-center px-4 py-2 text-sm font-semibold focus:z-20 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600 border border-blue-500 ' +
                css + '">'
        })
        document.getElementById('tableLink').innerHTML = pag
    }

    function getPagination(urlData) {
            axios.get(`${urlData}`)
                .then(res => {
                    setForm(res.data.data)
                    setPagination(res.data.links)
                })
                .catch(err => console.log('teste' + err));
    }
</script>
@stop