class c_734_1;
    integer i = -121;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_734_1;
    c_734_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1xx110zz1x10xx1x1xx0zx00zxxz0zxzzxzzzzzzzzzzxxxxzzzzxzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
