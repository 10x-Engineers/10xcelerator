class c_1401_1;
    integer i = -232;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1401_1;
    c_1401_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zzx0x0z1xz0z1zxx101zxxzx0z0z0zxxxzzzxzxxzzzzzzxxzzzxxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
