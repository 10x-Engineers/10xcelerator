class c_705_1;
    integer i = -116;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_705_1;
    c_705_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x10xz10xxx00x00x111zx1z001z0zxzxxzzzzzxzzzxzzzxxxzzzxzzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
