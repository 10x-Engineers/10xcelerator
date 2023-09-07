class c_928_1;
    integer i = -153;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_928_1;
    c_928_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x101zxxxxxzx01xx00x0z1xxxxxxz0zzzxxxxxxzzxzzzxxzzzzxxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
