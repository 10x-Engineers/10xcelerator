class c_920_1;
    integer i = -152;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_920_1;
    c_920_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0xz0111z000x1xxzzzzx000xxx00xzzzxzzxzzzxxxzxzxxzxzzzzxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
