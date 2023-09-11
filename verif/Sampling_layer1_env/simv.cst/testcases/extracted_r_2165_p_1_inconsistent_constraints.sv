class c_2165_1;
    integer i = -359;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2165_1;
    c_2165_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x10x101x1z011z01xzz0z0xzzz0z1xxxzzxxzzzzxxxxzzxxxxxzxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
