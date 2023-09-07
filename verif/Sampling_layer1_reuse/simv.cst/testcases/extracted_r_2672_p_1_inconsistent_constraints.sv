class c_2672_1;
    integer i = -444;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2672_1;
    c_2672_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1zx0x0zxzzx110x1011x010z1z10xzzxzzzxzzzzxzxxzzzzxzzxzxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
