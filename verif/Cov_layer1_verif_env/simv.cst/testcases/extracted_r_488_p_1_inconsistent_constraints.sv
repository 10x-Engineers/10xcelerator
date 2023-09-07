class c_488_1;
    integer i = -486;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_488_1;
    c_488_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0xz101x00x00zxz1xxx1x1100xz111zzxxzzzzxzxzzzzxxxxzzxzxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
