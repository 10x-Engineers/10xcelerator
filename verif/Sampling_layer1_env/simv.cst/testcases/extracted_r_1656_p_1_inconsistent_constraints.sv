class c_1656_1;
    integer i = -274;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1656_1;
    c_1656_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx0x10x1zzzxz1xz1zz00zzzxx1zx0zzxxzxxzzxxxxzxzxzzzzzxzzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
