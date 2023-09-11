class c_733_1;
    integer i = -731;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_733_1;
    c_733_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx0xz11xz010zzx1x1z01011z1110zxxxzzxxzzxxxxzxxxxzzxxxzxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
