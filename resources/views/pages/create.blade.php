@extends('layouts.app')

@section('content')
<div class="col-span-12 mx-2 my-4 border-2 border-black rounded-2xl p-2 mb-4">
    <h2 class="mb-4 text-blue-800 font-bold">Cadastro Clientes</h2>
    <div id="errorMsg"></div>
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
    <div class="grid grid-cols-3 mb-2">
        <div>
            <label for="address_street" class="font-bold">Endereço: </label>
            <input type="text" name="address_street" id="address_street" class="border-2 border-black rounded-lg ml-3">
        </div>
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
        <div class="aling-right  pl-4">
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
    </div>
    <div class="grid grid-cols-4 mb-2">
        <div class="text-right col-start-4">
            <input type="button" id="salve" value="Salvar" onclick="salve()" class="py-2 px-4 bg-blue-600 text-white rounded hover:bg-blue-800">
            <input type="button" id="clear" value="Limpar" onclick="clearForm()" class="py-2 px-4 bg-gray-200 rounded hover:bg-gray-400 hover:text-white">
        </div>
    </div>

</div>

@stop

@section('js')
<script>
    function salve() {
        let gender = document.querySelector('input[name="gender"]:checked');
        let genderValue = null;

        if (gender && typeof gender === 'object' && !Array.isArray(gender))
            genderValue = gender.value

        let data = {
            cpf: document.getElementById('cpf').value,
            name: document.getElementById('name').value,
            birthdate: document.getElementById('birthdate').value,
            gender: genderValue,
            address_street: document.getElementById('address_street').value,
            state_id: document.getElementById('state_id').value,
            city_id: document.getElementById('city_id').value,
        }
        axios.post('api/customer/create', data)
            .then(res => {
                document.getElementById("errorMsg").innerHTML = "Usuário criado com sucesso!";
                document.getElementById("errorMsg").className = "text-green-600";
                document.getElementById('cpf').innerHTML = ''
                document.getElementById('name').innerHTML = ''
                document.getElementById('birthdate').innerHTML = ''
                document.getElementById('address_street').innerHTML = ''
            })
            .catch(err => {
                console.log(err)
                document.getElementById("errorMsg").innerHTML = ''

                if(err.hasOwnProperty('response')){
                for (const [key, value] of Object.entries(err.response.data.errors)) {
                    document.getElementById("errorMsg").innerHTML += value + "<br >";
                }
                if (err.response.data.success) {
                    document.getElementById("errorMsg").className = "text-green-600";
                } else {
                    document.getElementById("errorMsg").className = "text-red-500";
                }
            }
            });
    }

    function clearForm() {
        location.reload();
    }
</script>
@stop