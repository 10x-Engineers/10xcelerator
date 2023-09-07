class c_669_1;
    integer i = 669;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_669_1;
    c_669_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zzz0zzxz0x0x1zzzx1xxzz1zzx1x11zxxzxxxxxzzxxzxzzxxxxxxxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
