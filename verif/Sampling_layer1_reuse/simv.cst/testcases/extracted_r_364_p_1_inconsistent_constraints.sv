class c_364_1;
    integer i = -59;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_364_1;
    c_364_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xz1x1x00x0zxz010zz100zx100xxxxzzzzxzxzzxzxzzxxxxzzzxxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
