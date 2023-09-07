class c_312_1;
    integer i = -50;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_312_1;
    c_312_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1xx1101x11z1xx11z1x00zx0zz11x0xxzzxxxxzzxxxxxzxxzxxxxxxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
