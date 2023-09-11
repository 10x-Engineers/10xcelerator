class c_1364_1;
    integer i = -226;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1364_1;
    c_1364_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011zz0zxxz1zx1100z1zx000x0zx0x0zzxxzzzzxzxzxxzzxxxxzzzxzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
