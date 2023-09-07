class c_465_1;
    integer i = -463;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_465_1;
    c_465_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z01x0x010xx01xz0zx10100z0xx1xxzxxxxzzzxzxzzxxxzzxzxzxxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
