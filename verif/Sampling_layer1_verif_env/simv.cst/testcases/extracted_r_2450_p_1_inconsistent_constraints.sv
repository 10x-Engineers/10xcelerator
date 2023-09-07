class c_2450_1;
    integer i = -407;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2450_1;
    c_2450_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0zxx10z0x10z0zz0z101x100xx1zxzxzxxxzzxzzzzxxxxxzzzzxxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
