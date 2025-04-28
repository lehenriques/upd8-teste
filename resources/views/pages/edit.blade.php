@extends('layouts.app')

@section('content')
<div class="col-span-12 mx-2 my-4 border-2 border-black rounded-2xl p-2 mb-4">
    <h2 class="mb-4 text-blue-800 font-bold">Editar Clientes</h2>
    <div class="grid grid-cols-4 mb-4">
        <div>
            <label for="cpf" class="font-bold">CPF: </label>
            <input type="text" name="cpf" id="cpf" value="{{ $customer->cpf }}" class="border-2 border-black rounded-lg ml-3">
        </div>
        <div>
            <label for="name" class="font-bold">Nome: </label>
            <input type="text" name="name" id="name" value="{{ $customer->name }}" class="border-2 border-black rounded-lg ml-3">
        </div>
        <div class="text-center">
            <label for="birthdate" class="font-bold">Data Nascimento: </label>
            <input type="date" name="birthdate" id="birthdate" value="{{ $customer->birthdate }}" class="border-2 border-black rounded-lg ml-3">
        </div>
        <div class="text-right">
            <label for="gender" class="font-bold">Sexo: </label>
            @if ($customer->gender == 'M' || $customer->gender == 'm')
            <input type="radio" name="gender" id="gender" value="m" checked> Masculino
            @else
            <input type="radio" name="gender" id="gender" value="m"> Masculino
            @endif

            @if ($customer->gender == 'F' || $customer->gender == 'f')
            <input type="radio" name="gender" id="gender" value="f" checked> Feminino
            @else
            <input type="radio" name="gender" id="gender" value="f"> Feminino
            @endif
        </div>
    </div>
    <div class="grid grid-cols-3 mb-2">
        <div>
            <label for="address_street" class="font-bold">Endereço: </label>
            <input type="text" name="address_street" id="address_street" value="{{ $customer->address_street }}" class="border-2 border-black rounded-lg ml-3">
        </div>
        <div>
            <label for="state_id" class="font-bold">Estados:</label>
            <select name="state_id" id="state_id" class="border-2 border-black rounded-lg ml-3">
                <option value="" selected>Selecione uma Estado
                </option>
                @foreach ($states as $state)
                @if ($state->id == $customer->state_id)
                <option value="{{ $state->id }}" selected>{{ $state->name }}</option>
                @else
                <option value="{{ $state->id }}">{{ $state->name }}</option>
                @endif
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
                @if ($city->id == $customer->city_id)
                <option value="{{ $city->id }}" selected>{{ $city->name }}</option>
                @else
                <option value="{{ $city->id }}">{{ $city->name }}</option>
                @endif
                @endforeach
            </select>
        </div>
    </div>
    <div class="grid grid-cols-4 mb-2">
        <div class="text-right col-start-4">
            <input type="button" id="search" value="Pesquisar" onclick="search()" class="py-2 px-4 bg-blue-600 text-white rounded hover:bg-blue-800">
            <input type="button" id="clear" value="Limpar" onclick="clearSearch()" class="py-2 px-4 bg-gray-200 rounded hover:bg-gray-400 hover:text-white">
        </div>
    </div>
    

</div>
<div id="representntes" class="col-span-12"></div>
@stop

@section('js')
<script>
     window.onload = function() {
        axios.get('/api/customer/<?php echo  $customer->id; ?>/representatives')
            .then(res => {
                if(res.status === 200 && res.data.representatives.length > 0)
                    setForm(res.data.representatives)
            })
            .catch(err => console.log('teste' + err));
    }

    function setForm(values) {
        let table = '<div class="mx-2 my-4 border-2 border-black rounded-2xl p-2 "><h2 class="mb-4 text-blue-800 font-bold">Representantes que podem atender este cliente</h2><div class="mb-4"><table class="table-auto border border-black w-full"><thead><th class="border">Nome</th><th class="border">Cidade</th></thead><tbody>';
        values.forEach(element => {
            table += '<tr class="border">' +
                '<td class="border">' + element.name + '</td>' +
                '<td class="border">' + element.city.name + '</td>' +
                '</tr>'
        });
        table += '</tbody></table></div>'
        document.getElementById('representntes').innerHTML = table
    }
</script>
@stop