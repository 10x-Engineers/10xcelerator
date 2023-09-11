class c_673_1;
    integer i = -671;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_673_1;
    c_673_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0z11xx011zxx0zx000xx11zzx11zxxzxzzxxxzxxxzxxxzxzxxzxxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
