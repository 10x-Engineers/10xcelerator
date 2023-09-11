class c_1006_1;
    integer i = -166;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1006_1;
    c_1006_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00zzzx1z01xxz00z0zz0z111x0x101zzzzzxxzxzxzzxxxxxxxxzxzzzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
