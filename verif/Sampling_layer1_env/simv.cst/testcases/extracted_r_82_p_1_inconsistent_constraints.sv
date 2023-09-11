class c_82_1;
    integer i = -12;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_82_1;
    c_82_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z0zxx011xz1z110zx101x0zx00000zzxxxxzzzzxzzxxxzxzxxxxzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
