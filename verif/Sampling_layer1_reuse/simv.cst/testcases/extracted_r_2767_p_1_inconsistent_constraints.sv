class c_2767_1;
    integer i = -460;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2767_1;
    c_2767_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1xx01001z1xx0z110x1x00zxz0z11zxxzzzzzzzzxxxxzxzzzzxzxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
