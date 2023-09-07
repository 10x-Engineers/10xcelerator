class c_3246_1;
    integer i = -539;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3246_1;
    c_3246_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z110z1xx1x0z0101z1111000x01x00zxzzxzzzzxzxzxxxzzzzxxzxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
