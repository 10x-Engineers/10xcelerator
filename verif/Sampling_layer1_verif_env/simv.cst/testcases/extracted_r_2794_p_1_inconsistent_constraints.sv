class c_2794_1;
    integer i = -464;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2794_1;
    c_2794_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x010zxxx0zx1z1111x10z0xx00x0xzzzzzzzxxzxxxzzxzzzzxxxzzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
