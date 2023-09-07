class c_2259_1;
    integer i = -375;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2259_1;
    c_2259_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0111000x1z1z0x0xzzxx11zzx11zxzzzxxzxxzxxxzxzzzxxxzxxzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
