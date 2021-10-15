/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function generateColor(){
    let r = parseInt(Math.random() * 255);
    let g = parseInt(Math.random() * 255);
    let b = parseInt(Math.random() * 255);
    return `rgb(${r}, ${g}, ${b})`
}

function benhNhanStats(id){
    const data = {
      labels: [
        'Red',
        'Blue',
        'Yellow'
      ],
      datasets: [{
        label: 'My First Dataset',
        data: [300, 50, 100],
        backgroundColor: [
          'rgb(255, 99, 132)',
          'rgb(54, 162, 235)',
          'rgb(255, 205, 86)'
        ],
        hoverOffset: 4
      }]
    };
    
    const config = {
        type: 'doughnut',
        data: data,
    };
    
    let ctx = document.getElementById(id).getContext("2d")
    
    new Chart(ctx, config)
}

function doanhThuStats(id, doanhThuLabels=[], doanhThuInfo=[]){
    let colors = []
    for(let i = 0; i < doanhThuInfo.length; i++)
        colors.push(generateColor())
    const data = {
            labels: doanhThuLabels,
            datasets: [{
            label: 'Thống kê doanh thu theo thuốc',
            data: doanhThuInfo,
            backgroundColor: colors,
            borderColor: colors,
            hoverOffset: 4
        }]
    };
    
    const config = {
        type: 'line',
        data: data,
    };
    
    let ctx = document.getElementById(id).getContext("2d")
    
    new Chart(ctx, config)
}

function doanhThuMonthStats(id, doanhThuLabels=[], doanhThuInfo=[]){
    let colors = []
    for(let i = 0; i < doanhThuInfo.length; i++)
        colors.push(generateColor())
    const data = {
            labels: doanhThuLabels,
            datasets: [{
            label: 'Thống kê doanh thu theo tháng',
            data: doanhThuInfo,
            backgroundColor: colors,
            borderColor: colors,
            hoverOffset: 4
        }]
    };
    
    const config = {
        type: 'bar',
        data: data,
    };
    
    let ctx = document.getElementById(id).getContext("2d")
    
    new Chart(ctx, config)
}


