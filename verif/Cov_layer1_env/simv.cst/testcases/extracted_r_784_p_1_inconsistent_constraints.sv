class c_784_1;
    integer i = -782;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_784_1;
    c_784_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz1zxzx1x101001zz11z010111xx01zzxxxzzxzxxxxzzxzzxzxxxzzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
