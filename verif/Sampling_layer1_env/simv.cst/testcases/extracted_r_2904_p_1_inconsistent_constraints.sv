class c_2904_1;
    integer i = -482;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2904_1;
    c_2904_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11zz110zz1zz10z1z11101xz1xx000xxxxzzzzxzxzxzzxxxzxxxzxzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
