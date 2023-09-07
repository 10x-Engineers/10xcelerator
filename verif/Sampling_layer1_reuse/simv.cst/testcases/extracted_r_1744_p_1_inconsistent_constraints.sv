class c_1744_1;
    integer i = -289;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1744_1;
    c_1744_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0zzzz11zxz00z0zx00zzz1000x10xxxxxxzzxxxxzxxzzxxzzzzxxxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
