class c_1380_1;
    integer i = -228;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1380_1;
    c_1380_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx11011101x00zx1zx1x0zz1101zx01zxzxxxzzzzxzxxxxxxzzzzxxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
