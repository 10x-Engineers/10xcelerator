class c_2723_1;
    integer i = -452;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2723_1;
    c_2723_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011011000z1z101z1zxxzx11010xxxzxzxxzzzxzxxxzxxzzxxxzxxzzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
