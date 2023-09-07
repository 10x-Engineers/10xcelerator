class c_3035_1;
    integer i = -504;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3035_1;
    c_3035_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000xz001zxz1x10z10xx0000010z1z0zxxzxxxzzzzzxzxzzzxzzxzxxzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
