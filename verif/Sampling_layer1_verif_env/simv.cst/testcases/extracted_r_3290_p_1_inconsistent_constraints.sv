class c_3290_1;
    integer i = -547;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3290_1;
    c_3290_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx11x1z10101zz1x10xx1zxzx0001xxxxzzxzxzzzzzxzzxxxzxzxxzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
