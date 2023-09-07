class c_1654_1;
    integer i = -274;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1654_1;
    c_1654_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx0zxx00xzzx0xx0zxx11100z11xx0zzzzxxxzxxzzxzzzzxzxzxzzxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
