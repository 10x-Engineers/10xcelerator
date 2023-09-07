class c_1541_1;
    integer i = -255;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1541_1;
    c_1541_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11x0z0100z1xx1xxz10xx11x000zxxxzxxxxzxzxxxxxxxxzxxzxzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
